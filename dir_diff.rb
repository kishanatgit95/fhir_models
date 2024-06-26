require 'fileutils'
require 'diffy'
require 'optparse'
options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: ruby #{__FILE__} [options] dir1 dir2"
  opts.on("-n", "--name", "Print files in only one directory") do |n|
    options[:name] = n
  end
  opts.on("-d", "--diff", "Print filenames with inconsistencies") do |d|
    options[:diff] = d
  end
  opts.on("-v", "--verbose", "Print file inconsistencies")  do |v|
    options[:verbose] = v
  end
end.parse!

def compare_directories(dir1, dir2, options)
  dir1_files = Dir.glob("#{dir1}/**/*").select { |f| File.file?(f) }.map { |f| f.gsub("#{dir1}/", '') }.sort
  dir2_files = Dir.glob("#{dir2}/**/*").select { |f| File.file?(f) }.map { |f| f.gsub("#{dir2}/", '') }.sort
  
  # find different files
  only_in_dir1 = dir1_files - dir2_files
  only_in_dir2 = dir2_files - dir1_files
  common_files = dir1_files & dir2_files

  # report inconsistent directory contents
  if options[:name] || options.empty?
    puts "Files only in #{dir1}:\n#{only_in_dir1.join("\n")}\n" unless only_in_dir1.empty?
    puts "Files only in #{dir2}:\n#{only_in_dir2.join("\n")}\n" unless only_in_dir2.empty?
  end

  # report inconsistent file contents
  if options[:diff] || options[:verbose] || options.empty?
    common_files.each do |file|
      file1 = File.join(dir1, file)
      file2 = File.join(dir2, file)
      unless FileUtils.compare_file(file1, file2)
        puts "File #{file} differs"
        puts Diffy::Diff.new(file1, file2, source: 'files') if !options[:verbose].nil?
      end
    end
  end

  if only_in_dir1.empty? && only_in_dir2.empty? && common_files.all? { |file| FileUtils.compare_file(File.join(dir1, file), File.join(dir2, file)) }
    puts "Directories are identical."
  elsif options[:diff].nil?
    puts "Directories have unidentical files.  Use -d (or --diff) to compare and -v (or --verbose) to see the differences"
  end
end

# runner
if ARGV.size != 2
  puts "Usage: ruby #{__FILE__} [options] dir1 dir2"
  exit
end
compare_directories(ARGV[0], ARGV[1], options)
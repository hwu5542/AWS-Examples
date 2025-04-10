#require libraries
require 'aws-sdk-s3'
require 'pry'
require 'securerandom'

# S3 Bucket configuration
bucket_name = ENV['BUCKET']
region = 'us-east-1'

puts bucket_name

# Initialize AWS s3 client
client = Aws::S3::Client.new

# Create S3 bucket
resp = client.create_bucket({
    bucket: bucket_name
    # create_bucket_configuration: {
    #     location_constraint: region
    # }
})
# for debugging using break point:
binding.pry
# resp
# resp.location
# bucket_name
# exit!

# determine the number of files to create and upload
number_of_files = 1+rand(3)
puts "number_of_files: #{number_of_files}"

# create and upload each file
number_of_files.times.each do |i|
    puts "i: #{i}"
    filename = "file_#{i}.txt"
    output_path = "/tmp/#{filename}"

    File.open(output_path, "w") do |f|
        f.write SecureRandom.uuid
    end

    # Open and read the file in binary then upload to s3
    File.open(outpath_path, 'rb') do |f|
        s3.put_object(
            bucket: bucket_name,
            key: filename,
            body: f
        )
    end
end

require "send_aws_kinesis_event/version"
require 'aws-sdk-kinesis'

module SendAwsKinesisEvent
  def self.call(partition_key, data)
    begin
      kinesis = Aws::Kinesis::Client.new(
          region: ENV['AWS_REGION'],
          access_key_id: ENV['AWS_ACCESS_KEY_ID'],
          secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
      )

      data_blob = MultiJson.dump(data)

      record = kinesis.put_record(:stream_name => ENV['KINESIS_STREAM_NAME'],
                             :data => data_blob,
                             :partition_key => partition_key
      )
    rescue => error
      puts error
      if record
        shard_id = record[:shard_id] if record
        sequence_number = record[:sequence_number] if record
      end
      Rails.logger.info "Put Kinesis event record to partition key '#{partition_key}' shard '#{shard_id}' (#{sequence_number}): '#{data_blob}'"
    end
  end

end

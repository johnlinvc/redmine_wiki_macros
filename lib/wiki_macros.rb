Redmine::WikiFormatting::Macros.register do
  desc "auto counting with tag as argument"
  macro :count do |obj, args|
    @counter_hash ||= Hash.new
    @counter_hash[args.first.to_s] ||= 0
    count =@counter_hash[args.first.to_s] 
    count+=1
    @counter_hash[args.first.to_s] = count
    count.to_s
  end
end


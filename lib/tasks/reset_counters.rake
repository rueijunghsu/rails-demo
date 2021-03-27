namespace :db do
	desc 'Reset Counters Cache !'
	task :reset_counter => :environment do
		puts "prepare to reset counters"
		Candidate.all.each do |candidate|
			Candidate.reset_counters(candidate.id, :vote_logs)
		end
		puts "done!"
	end
end
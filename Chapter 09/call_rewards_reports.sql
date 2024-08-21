set @count_rewardees = 0;
call sakila.rewards_report(5, 10, @count_rewardees);
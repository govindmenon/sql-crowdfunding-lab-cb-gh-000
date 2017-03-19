# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts
"select projects.title,sum(pledges.amount) from pledges left join projects on pledges.project_id = projects.id group by projects.title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
"select users.name,users.age,sum(pledges.amount) from pledges left join users on pledges.user_id = users.id group by users.name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
"select projects.title,sum(pledges.amount)-projects.funding_goal from pledges left join projects on projects.id = pledges.project_id group by projects.title having sum(pledges.amount)>=projects.funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"select users.name, sum(pledges.amount) from pledges left join users on users.id = pledges.user_id group by users.name order by sum(pledges.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"select projects.category, pledges.amount from projects join pledges on projects.id = pledges.project_id where projects.category='music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"select projects.category, sum(pledges.amount) from projects join pledges on projects.id = pledges.project_id where projects.category = 'books';"
end

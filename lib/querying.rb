def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title,books.year FROM books
  WHERE books.series_id = (SELECT MIN(id) from series)
  ORDER BY books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name,characters.motto from characters ORDER BY characters.motto ASC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species,COUNT(characters.species) from characters
  GROUP BY characters.species
  ORDER BY COUNT(characters.species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT ( authors.name),subgenres.name FROM authors
  inner join series on authors.id = series.author_id
  inner join subgenres on series.subgenre_id=subgenres.id
  "
end

def select_series_title_with_most_human_characters
  #***********TIME CONSUMING ***************************************

  # SELECT C.[COUNTRY_ID], C.[COUNTRY], COUNT(S.[STUDENT_ID]) AS StudentCount
  # FROM [T_COMMON_COUNTRY] C
  # LEFT JOIN [T_HEI_STUDENTDATA] S ON C.[COUNTRY] = S.[STDCOUNTRY]
  # GROUP BY C.[COUNTRY_ID], C.[COUNTRY];
"
  select series.title from series
  join (
    select characters.series_id  s_id,count(characters.series_id) count from characters
    where characters.species='human'
    GROUP BY characters.series_id
  ) LIMIT 1"
  #this may need work


  # "  select characters.series_id  s_id,count(characters.series_id) count from characters
  #   where characters.species='human'
  #   GROUP BY characters.series_id"
  #   # got: [[1, 3], [2, 1]]


# "  select characters.series_id from characters
#   where characters.species='human'"
# #             got: [[1], [1], [1], [2]]

# "select series.title
# from series
# inner join characters
# on characters.series_id = series.id
# WHERE characters.species='human'
#    "
    # got: [["A Song of Ice and Fire"], ["A Song of Ice and Fire"], ["A Song of Ice and Fire"], ["Second Series"]]
  # "SELECT series.title, COUNT(species),characters.name from characters LEFT JOIN series where species='human'  GROUP BY series_id "


  # "SELECT * from characters where species='human' ORDER BY series_id"
  #return is eblow
  #[[2, "Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1],
  # [3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1],
  # [4, "Eddard Stark", "Winter is coming", "human", 1, 1],
  # [6, "Character Two", "motto two", "human", 2, 2]]

  # "SELECT * from characters where species='human'"
  # return is below
  # [[2, "Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1], [3, "Daenerys Targaryen", "If I look back I am lost", "human", 1, 1], [4, "Eddard Stark", "Winter is coming", "human", 1, 1], [6, "Character Two", "motto two", "human", 2, 2]]

  # +" ,count(characters.species)"
  # +" ,series.title "
  # +" from characters where species='human' "
  # +" join series on characters.series_id=series.id  "
  # +" join series ON series.id = characters.series_id"
  # +" GROUP BY characters.series_id "
  # +" ORDER BY count(species) DESC"


end

def select_character_names_and_number_of_books_they_are_in

  "select characters.name,count_occurances from characters JOIN
  (select character_id,count(character_id) AS count_occurances from character_books GROUP BY (character_id))
  where characters.id = character_id
  ORDER BY count_occurances DESC, characters.name"


#   "select characters.name,count_occurances from characters JOIN
#   (select character_id,count(character_id) AS count_occurances from character_books GROUP BY (character_id))
#   where characters.id = character_id"
# # got: [["Lady", 1], ["Tyrion Lannister", 3], ["Daenerys Targaryen", 3], ["Eddard Stark", 1], ["Character One", 1], ["Character Two", 3], ["Character Three", 3], ["Character Four", 1]]

  # "select character_id,count(character_id) AS count_occurances from character_books GROUP BY (character_id)"
  # got: [[1, 1], [2, 3], [3, 3], [4, 1], [5, 1], [6, 3], [7, 3], [8, 1]]


  # "select character_id,count(character_id) from character_books GROUP BY character_id"
  # got: [[1, 1], [2, 3], [3, 3], [4, 1], [5, 1], [6, 3], [7, 3], [8, 1]]

  # "select character_id,book_id from character_books ORDER BY character_id"
  # got: [[1, 1], [2, 1], [2, 2], [2, 3], [3, 1], [3, 2], [3, 3], [4, 1], [5, 4], [6, 4], [6, 5], [6, 6], [7, 4], [7, 5], [7, 6], [8, 4]]

  # "select characters.name from characters"
  # [["Lady"], ["Tyrion Lannister"], ["Daenerys Targaryen"], ["Eddard Stark"], ["Character One"], ["Character Two"], ["Character Three"], ["Character Four"]]


end

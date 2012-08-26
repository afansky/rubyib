# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

board = Board.find_or_create_by_name 'b'

BoardThread.delete_all
thread = BoardThread.create
board.board_threads << thread

Post.delete_all
posts = Post.create([
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:40:43', :text => 'A paragraph of text 1', :post_number => 21},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:44:43', :text => 'A paragraph of text 2', :post_number => 22},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:48:43', :text => 'A paragraph of text 3', :post_number => 23},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:49:43', :text => 'A paragraph of text 4', :post_number => 24},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:50:43', :text => 'A paragraph of text 5', :post_number => 25},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:51:43', :text => 'A paragraph of text 6', :post_number => 26},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:52:43', :text => 'A paragraph of text 7', :post_number => 27},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:53:43', :text => 'A paragraph of text 8', :post_number => 28},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:54:43', :text => 'A paragraph of text 9', :post_number => 29},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:55:43', :text => 'A paragraph of text 10', :post_number => 30}
                    ])

thread.posts << posts

thread2 = board.board_threads.create
thread2.posts.create([
                         {:topic => 'My cool title 1', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:40:43', :text => 'A paragraph of text 11', :post_number => 31},
                         {:topic => 'My cool title 1', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:44:43', :text => 'A paragraph of text 12', :post_number => 32},
                         {:topic => 'My cool title 1', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:48:43', :text => 'A paragraph of text 13', :post_number => 33},
                         {:topic => 'My cool title 1', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:49:43', :text => 'A paragraph of text 14', :post_number => 34},
                         {:topic => 'My cool title 1', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:50:43', :text => 'A paragraph of text 15', :post_number => 35},
                         {:topic => 'My cool title 1', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:51:43', :text => 'A paragraph of text 16', :post_number => 36},
                     ])



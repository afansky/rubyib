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
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:40:43', :post_number => 21, :text => 'A paragraph of text 1'},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:44:43', :post_number => 22, :text => 'A paragraph of text 2'},
                        {:topic => 'My cool title', :name => 'Anonymous', :creation_date => 'Fri 06 Jul 2012 05:48:43', :post_number => 23, :text => 'A paragraph of text 3'}
                    ])

thread.posts << posts



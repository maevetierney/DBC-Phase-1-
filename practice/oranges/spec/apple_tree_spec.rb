# require_relative "../apple"
# require_relative "../apple_tree"


# describe AppleTree do
#   let(:tree) { AppleTree.new() }
# #has an age, begins at 0 
#     it "has an age" do
#       expect(tree.age).to eq 0
#     end
# #has a height, begins at 0 
#     it "has a height" do
#       expect(tree.height).to eq 0
#     end
# #EACH GROWING SEASON 
#   #a tree should age one year
#     it "should change the age" do
#       expect {tree.pass_growing_season}.to change {tree.age}.from(0).to(1)
#     end
#   #a tree grows 2 years 
#     it "should make the tree grow" do
#       expect {tree.pass_growing_season}.to change{tree.height}.from(0).to(2)
#     end
#   #if a tree is 6 years old it should be mature, and can now bear 100-300 oranges
#     it "returns true if tree is old enough to bear fruit" do
#       5.times { tree.pass_growing_season}
#       expect(tree.mature?).to eq true
#     end
#   #if it is younger than 6 years, it is not mature 
#     it "returns false if tree is not old enough to bear fruit" do
#       tree.pass_growing_season
#       expect(tree.mature?).to eq false
#     end
#   #if a tree is less than 100 it is alive 
#     it "should return false for an alive tree" do
#       3.times { tree.pass_growing_season }
#       expect(tree.dead?).to eq false
#     end
#   #a tree should die at age 100, and dead returns true
#     it "should return true for a dead tree" do
#       45.times { tree.pass_growing_season }
#       expect(tree.dead?).to eq true
#     end
#   #if oranges are on the tree return true
#     it 'should return true if apples are on the tree' do
#       6.times { tree.pass_growing_season }
#       expect(tree.has_apples?).to be true
#     end
#   #if apples are not on the tree return false
#     it "should return false if the tree has no oranges" do
#       expect(tree.has_apples?).to be false
#     end
#   #pick an orange from an instance of the orange tree class, should return an orange 
#     it "should return an orange from the tree" do
#       12.times { tree.pass_growing_season }
#       expect(tree.pick_an_apple.class).to eq Apple
#     end
#   #the orange is no longer on the tree 
#     it "the returned orange should no longer be on the tree" do
#       8.times { tree.pass_growing_season }
#       before_picking = tree.apples.size
#       tree.pick_an_apple
#       after_picking = tree.apples.size
#       expect(before_picking - after_picking).to eq 1
#     end
#   #if the tree has no apples raise an error 
#     it "should raise an error if the tree has no oranges" do
#       expect{tree.pick_an_apple}.to raise_error("This tree has no apples")
#     end

# end
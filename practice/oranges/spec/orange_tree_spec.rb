require_relative "../orange"
require_relative "../orange_tree"


describe OrangeTree do
  let(:tree) { OrangeTree.new() }

  #a tree grows 2.5 years 
    it "should make the tree grow" do
      expect {tree.pass_growing_season}.to change{tree.height}.from(0).to(2.5)
    end
  #if a tree is less than 100 it is alive 
    it "should return false for an alive tree" do
      1.times { tree.pass_growing_season }
      expect(tree.dead?).to eq false
    end
  #a tree should die at age 100, and dead returns true
    it "should return true for a dead tree" do
      100.times { tree.pass_growing_season }
      p tree.age
      expect(tree.dead?).to eq true
    end
      # #if a tree is 6 years old it should be mature, and can now bear 100-300 oranges
    it "returns true if tree is old enough to bear fruit" do
      6.times { tree.pass_growing_season}
      expect(tree.mature?).to eq true
    end
    
  # #if it is younger than 6 years, it is not mature 
    it "returns false if tree is not old enough to bear fruit" do
      tree.pass_growing_season
      expect(tree.mature?).to eq false
    end
 # #if fruits are on the tree return true
    it 'should return true if fruits are on the tree' do
      7.times { tree.pass_growing_season }
      expect(tree.has_oranges?).to be true
    end
  # #if fruits are not on the tree return false
    it "should return false if the tree has no fruits" do
      expect(tree.has_oranges?).to be false
    end
end
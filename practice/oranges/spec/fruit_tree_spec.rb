require_relative "../fruit"
require_relative "../fruit_tree"
require_relative "../orange_tree"
require_relative "../orange"

describe FruitTree do
  let(:tree) { FruitTree.new() }
  let(:fruit) {Fruit.new()}
  let(:orangetree) {OrangeTree.new()}

#has an age, begins at 0 
    it "has an age" do
      expect(tree.age).to eq 0
    end
#has a height, begins at 0 
    it "has a height" do
      expect(tree.height).to eq 0
    end
#EACH GROWING SEASON 
  #a tree should age one year
    it "should change the age" do
      expect {tree.pass_growing_season}.to change {tree.age}.from(0).to(1)
    end

  # # #pick an fruit from an instance of the fruit tree class, should return an fruit 
    it "should return an fruit from the tree" do
      12.times { orangetree.pass_growing_season }
      expect(orangetree.pick_a_fruit.class).to eq Orange
    end

  # # #the fruit is no longer on the tree 
    it "the returned fruit should no longer be on the tree" do
      8.times { orangetree.pass_growing_season }
      before_picking = orangetree.fruits.size
      orangetree.pick_a_fruit
      after_picking = orangetree.fruits.size
      expect(before_picking - after_picking).to eq 1
    end
  # #if the tree has no fruits raise an error 
    it "should raise an error if the tree has no fruit" do
      expect{orangetree.pick_a_fruit}.to raise_error("This tree has no fruits")
    end
end
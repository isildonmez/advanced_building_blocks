require_relative 'enumerable_methods'

describe Enumerable do
  let(:array) {[1,2,3,4]}
  let(:array2) {[]}
  let(:array3) {[nil,true,99]}
  let(:array4) {[nil,false]}
  let(:answer) {[]}

  describe "#my_each" do
    # TODO: consider the way(s)
    context "with a given block" do
      it "Calls the given block once for each element in self, returns self" do
        array.my_each { |num| answer << num + 1 }
        expect(answer).to eql([2,3,4,5])
        # It correctly applies block to each element
        # Also I might to check if it correctly traverses each element:
        # expect { |block|  array.my_each(&block) }.to yield_successive_args(1,2,3,4)
      end
      #  but any of them doesn't check what it returns though.
    end
    context "when no block is given" do
      it "returns an Enumerator" do
        expect(array.my_each).to be_is_a(Enumerator)
        expect(array.my_each.to_a).to eql(array)
      end
    end
  end

  # TODO: when block is given
  describe "#my_each_with_index" do
    # context "with a given block" do
    #   it "calls block with two arguments: the item and its index, for each item." do
    #     array.my_each_with_index { |num, idx| answer << [num, idx] }
    #     expect(answer).to eql([[1,0], [2,1], [3,2], [4,3]])
    #     expect { |block|  array.my_each_with_index(&block) }.to yield_successive_args(1...3)
    #   end
    # end
    context "when no block is given" do
      it "returns an Enumerator" do
        expect(array.my_each_with_index).to be_is_a(Enumerator)
        # expect(array.my_each_with_index.to_a).to eql(array)
      end
    end
  end

  describe "#my_select" do
    context "with a given block" do
      it "returns an array of each elements which is true for the given block" do
        answer = array.my_select { |num| num.even?}
        expect(answer).to eql([2,4])
      end
    end
    context "when no block is given" do
      it "returns an Enumerator" do
        expect(array.my_select).to be_is_a(Enumerator)
        expect(array.my_select.to_a).to eql(array)
      end
    end
  end

  describe "#my_all?" do
    context "with a given block" do
      it "returns true if the block never returns false or nil." do
        expect(array.my_all? { |num| num < 5}).to eql(true)
      end
      it "returns false if the block returns except for true" do
        expect(array.my_all? { |num| num > 5}).to eql(false)
      end
    end
    context "when no block is given" do
      it "returns true when none of the collection members are false or nil." do
        expect(array2.my_all?).to eql(true)
      end
      it "returns false when any of the collection members are false or nil." do
        expect(array3.my_all?).to eql(false)
      end
    end
  end

  describe "#my_any?" do
    context "with a given block" do
      it "returns true if the block ever returns a value other than false or nil" do
        expect(array.my_any? { |num| num >= 4 }).to eql(true)
      end
    it "returns false if the block never returns true" do
        expect(array.my_any? { |num| num > 4 }).to eql(false)
      end
    end
    context "when no block is given" do
      it "return true if at least one of the collection members is not false or nil." do
        expect(array3.my_any?).to eql(true)
      end
      it "return false if at least none of the collection members is true." do
        expect(array2.my_any?).to eql(false)
      end
    end
  end

  # describe "#my_none?" do
  #   context "with a given block" do
  #     it "" do
  #       expect(my_()).to eql("")
  #     end
  #   end
  #   context "when no block is given" do
  #     it "" do
  #       expect().to eql()
  #     end
  #   end
  # end

  # describe "#my_count" do
  #   context "with a given block" do
  #     it "" do
  #       expect(my_()).to eql("")
  #     end
  #   end
  #   context "when no block is given" do
  #     it "" do
  #       expect().to eql()
  #     end
  #   end
  # end

  # describe "#my_inject" do
  #   context "" do
  #     it "" do
  #       expect(my_()).to eql("")
  #     end
  #   end
  # end

  # describe "#my_map" do
  #   context "with a given block" do
  #     it "" do
  #       expect(my_()).to eql("")
  #     end
  #   end
  #   context "when no block is given" do
  #     it "" do
  #       expect().to eql()
  #     end
  #   end
  # end

end


# describe "#multiply_els" do
#   context "" do
#       it "" do
#         expect(my_()).to eql("")
#       end
#     end
# end

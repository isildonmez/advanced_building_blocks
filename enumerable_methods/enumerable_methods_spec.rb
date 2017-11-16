require_relative 'enumerable_methods'

describe Enumerable do
  let(:array) {[1,2,3,4]}
  let(:array2) {[]}
  let(:array3) {[nil,true,99]}
  let(:array4) {[nil,false]}
  let(:answer) {[]}

  describe "#my_each" do
    context "with a given block" do
      it "Calls the given block once for each element in self, returns self" do
        array.my_each {|num| answer << num + 1}
        expect(answer).to eq([2,3,4,5])
        # It correctly applies block to each element but doesn't check what it returns though.
        # Also I might to check if it correctly traverses each element:
        # expect { |block|  array.my_each(&block) }.to yield_successive_args(7, 9, 13)

      end
    end
    context "when no block is given" do
      it "returns an Enumerator" do
        expect(array.my_each).to eql(array.to_enum(:my_each))
      end
    end
  end

  # describe "#my_each_with_index" do
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

  # describe "#my_select" do
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

  # describe "#my_all?" do
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

  # describe "#my_any?" do
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

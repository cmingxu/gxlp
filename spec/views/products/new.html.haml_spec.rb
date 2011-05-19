require 'spec_helper'

describe "products/new.html.haml" do
  before(:each) do
    assign(:product, stub_model(Product,
      :name => "MyString",
      :meta => "MyString",
      :desc => "MyText",
      :price => "9.99",
      :state => "MyString",
      :inventory => 1
    ).as_new_record)
  end

  it "renders new product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => products_path, :method => "post" do
      assert_select "input#product_name", :name => "product[name]"
      assert_select "input#product_meta", :name => "product[meta]"
      assert_select "textarea#product_desc", :name => "product[desc]"
      assert_select "input#product_price", :name => "product[price]"
      assert_select "input#product_state", :name => "product[state]"
      assert_select "input#product_inventory", :name => "product[inventory]"
    end
  end
end

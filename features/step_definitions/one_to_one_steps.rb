Given /^a parent model class and instance$/ do
  Parent = Class.new(ActiveRecord::Base) do
    has_one :child
  end
  @parent = Parent.new
end

Given /^a child model class and instance$/ do
  Child = Class.new(ActiveRecord::Base) do
    belongs :parent
  end
  @child = Child.new
  @parent.child = @child
end

When /^I access the association of a parent model instance$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^it should return the child instance of the parent instance$/ do
  pending # express the regexp above with the code you wish you had
end

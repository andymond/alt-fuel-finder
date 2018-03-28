require "rails_helper"

# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

describe Station do
  it { should respond_to(:name) }
  it { should respond_to(:address) }
  it { should respond_to(:fuel_types) }
  it { should respond_to(:distance) }
  it { should respond_to(:access_times) }
end

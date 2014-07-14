FactoryGirl.define do 
	factory :user do
		sequence(:name)  { |n| "Person #{n}" }
        sequence(:email) { |n| "person_#{n}@example.com"}
		password "Busayo20"
		password_confirmation "Busayo20"

		 factory :admin do
           admin true
        end
    end
end
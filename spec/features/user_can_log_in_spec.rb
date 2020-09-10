RSpec.describe 'User authentication', type: feature do
    feature 'user can login' do
    
    let (:user) { FactoryBot.create (:user) }
    
    before do
        visit '/'
        click_on 'Login'
    end

    it 'by loging in to the page' do
        fill_in "Email", with: 'Email@craft.com'
        fill_in "Password", with: 'MyString'
        click_on "Log in"
        expect(page).to have_content 'Inbox'
    end
end
end



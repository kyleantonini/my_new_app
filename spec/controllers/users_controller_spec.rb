require 'rails_helper'

describe UsersController, :type => :controller do
  
  before do
  	@user = User.create!(email: "chuckwagon69@yahoo.com", password: "imcool69")
  end
    
  describe  "GET #show" do
    context "User is logged in" do
      before do
      	sign_in @user
      end
      it "loads correct user details" do
      	get :show, id: @user.id
      	expect(response).to have_http_status(200)
      	expect(assigns(:user)).to eq @user
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to(root_path)
      end
    end
  end

  before do
    @user2 = User.create!(email: "mypuppyrocks@webweb.com", password: "biteme65")
  end
  
  describe "GET #show" do
    context "User2 is logged in" do
      before do
        sign_in @user2
      end
      it "loads correct user details" do
        get :show, id: @user2.id
        expect(response).to have_http_status(200)
        expect(assigns(:user)).to eq @user2
      end
    end

    context "cannot show different user" do
      before do
        sign_in @user2
      end
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end

  end  
end
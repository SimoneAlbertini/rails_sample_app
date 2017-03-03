def it_should_be_http_ok(method)
  it "responds 200 OK" do
    get method
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
end

def it_should_render_correct_template(method)
  it "should render #{method.to_s} erb template" do
    get method
    expect(response).to render_template(method.to_s)
  end
end

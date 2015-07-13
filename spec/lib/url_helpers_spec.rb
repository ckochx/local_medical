require 'url_helpers'

describe UrlHelpers do

  it "#self.get_city_url" do
    url = described_class.get_city_url("Los Angeles")

    expect(url).to eq UrlHelpers::CITY_URL["Los Angeles"]
  end

  it "provides a default url" do
    url = described_class.get_city_url("Los Ares")

    expect(url).to eq described_class::DEFAULT_URL
  end

  it "#promo_urls" do
    promo_urls = described_class.promo_urls

    expect(promo_urls). to eq described_class::PROMO_URLS
  end

  it "includes the DEFAULT_URL in PROMO_URL" do
    promo_urls = described_class.promo_urls

    expect(promo_urls['default_url']). to eq described_class::DEFAULT_URL
  end
end
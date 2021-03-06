# defmodule CodeSponsor.ImpressionsTest do
#   use CodeSponsor.DataCase

#   alias CodeSponsor.Impressions

#   describe "impressions" do
#     alias CodeSponsor.Impressions.Impression

#     @valid_attrs %{browser: "some browser", city: "some city", country: "some country", device_type: "some device_type", ip: "some ip", latitude: "120.5", longitude: "120.5", os: "some os", postal_code: "some postal_code", region: "some region", screen_height: 42, screen_width: 42, user_agent: "some user_agent", utm_campaign: "some utm_campaign", utm_content: "some utm_content", utm_medium: "some utm_medium", utm_source: "some utm_source", utm_term: "some utm_term"}
#     @update_attrs %{browser: "some updated browser", city: "some updated city", country: "some updated country", device_type: "some updated device_type", ip: "some updated ip", latitude: "456.7", longitude: "456.7", os: "some updated os", postal_code: "some updated postal_code", region: "some updated region", screen_height: 43, screen_width: 43, user_agent: "some updated user_agent", utm_campaign: "some updated utm_campaign", utm_content: "some updated utm_content", utm_medium: "some updated utm_medium", utm_source: "some updated utm_source", utm_term: "some updated utm_term"}
#     @invalid_attrs %{browser: nil, city: nil, country: nil, device_type: nil, ip: nil, latitude: nil, longitude: nil, os: nil, postal_code: nil, region: nil, screen_height: nil, screen_width: nil, user_agent: nil, utm_campaign: nil, utm_content: nil, utm_medium: nil, utm_source: nil, utm_term: nil}

#     def impression_fixture(attrs \\ %{}) do
#       {:ok, impression} =
#         attrs
#         |> Enum.into(@valid_attrs)
#         |> Impressions.create_impression()

#       impression
#     end

#     test "list_impressions/0 returns all impressions" do
#       impression = impression_fixture()
#       assert Impressions.list_impressions() == [impression]
#     end

#     test "get_impression!/1 returns the impression with given id" do
#       impression = impression_fixture()
#       assert Impressions.get_impression!(impression.id) == impression
#     end

#     test "create_impression/1 with valid data creates a impression" do
#       assert {:ok, %Impression{} = impression} = Impressions.create_impression(@valid_attrs)
#       assert impression.browser == "some browser"
#       assert impression.city == "some city"
#       assert impression.country == "some country"
#       assert impression.device_type == "some device_type"
#       assert impression.ip == "some ip"
#       assert impression.latitude == Decimal.new("120.5")
#       assert impression.longitude == Decimal.new("120.5")
#       assert impression.os == "some os"
#       assert impression.postal_code == "some postal_code"
#       assert impression.region == "some region"
#       assert impression.screen_height == 42
#       assert impression.screen_width == 42
#       assert impression.user_agent == "some user_agent"
#       assert impression.utm_campaign == "some utm_campaign"
#       assert impression.utm_content == "some utm_content"
#       assert impression.utm_medium == "some utm_medium"
#       assert impression.utm_source == "some utm_source"
#       assert impression.utm_term == "some utm_term"
#     end

#     test "create_impression/1 with invalid data returns error changeset" do
#       assert {:error, %Ecto.Changeset{}} = Impressions.create_impression(@invalid_attrs)
#     end

#     test "update_impression/2 with valid data updates the impression" do
#       impression = impression_fixture()
#       assert {:ok, impression} = Impressions.update_impression(impression, @update_attrs)
#       assert %Impression{} = impression
#       assert impression.browser == "some updated browser"
#       assert impression.city == "some updated city"
#       assert impression.country == "some updated country"
#       assert impression.device_type == "some updated device_type"
#       assert impression.ip == "some updated ip"
#       assert impression.latitude == Decimal.new("456.7")
#       assert impression.longitude == Decimal.new("456.7")
#       assert impression.os == "some updated os"
#       assert impression.postal_code == "some updated postal_code"
#       assert impression.region == "some updated region"
#       assert impression.screen_height == 43
#       assert impression.screen_width == 43
#       assert impression.user_agent == "some updated user_agent"
#       assert impression.utm_campaign == "some updated utm_campaign"
#       assert impression.utm_content == "some updated utm_content"
#       assert impression.utm_medium == "some updated utm_medium"
#       assert impression.utm_source == "some updated utm_source"
#       assert impression.utm_term == "some updated utm_term"
#     end

#     test "update_impression/2 with invalid data returns error changeset" do
#       impression = impression_fixture()
#       assert {:error, %Ecto.Changeset{}} = Impressions.update_impression(impression, @invalid_attrs)
#       assert impression == Impressions.get_impression!(impression.id)
#     end

#     test "delete_impression/1 deletes the impression" do
#       impression = impression_fixture()
#       assert {:ok, %Impression{}} = Impressions.delete_impression(impression)
#       assert_raise Ecto.NoResultsError, fn -> Impressions.get_impression!(impression.id) end
#     end

#     test "change_impression/1 returns a impression changeset" do
#       impression = impression_fixture()
#       assert %Ecto.Changeset{} = Impressions.change_impression(impression)
#     end
#   end
# end

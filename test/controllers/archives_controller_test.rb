require "test_helper"

class ArchivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archive = archives(:one)
  end

  test "should get index" do
    get archives_url
    assert_response :success
  end

  test "should get new" do
    get new_archive_url
    assert_response :success
  end

  test "should create archive" do
    assert_difference('Archive.count') do
      post archives_url, params: { archive: { actionrate: @archive.actionrate, damage: @archive.damage, defense: @archive.defense, description: @archive.description, health: @archive.health, maxDist: @archive.maxDist, notes: @archive.notes, range: @archive.range, speed: @archive.speed, title: @archive.title, troopDamage: @archive.troopDamage } }
    end

    assert_redirected_to archive_url(Archive.last)
  end

  test "should show archive" do
    get archive_url(@archive)
    assert_response :success
  end

  test "should get edit" do
    get edit_archive_url(@archive)
    assert_response :success
  end

  test "should update archive" do
    patch archive_url(@archive), params: { archive: { actionrate: @archive.actionrate, damage: @archive.damage, defense: @archive.defense, description: @archive.description, health: @archive.health, maxDist: @archive.maxDist, notes: @archive.notes, range: @archive.range, speed: @archive.speed, title: @archive.title, troopDamage: @archive.troopDamage } }
    assert_redirected_to archive_url(@archive)
  end

  test "should destroy archive" do
    assert_difference('Archive.count', -1) do
      delete archive_url(@archive)
    end

    assert_redirected_to archives_url
  end
end

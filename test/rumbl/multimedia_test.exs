defmodule Rumbl.MultimediaTest do
  use Rumbl.DataCase, async: true
  
  alias Rumbl.Multimedia
  alias Rumbl.Multimedia.Category

  describe "categories" do
    test "list_alphabetical_cateogories/0" do
      for name <- ~w(Drama Action Comedy) do
        Multimedia.create_category!(name)
      end

      alpha_names =
        for %Category{name: name} <- Multimedia.list_alphabetical_categories() do
         name
        end
 
      assert alpha_names == ~w(Action, Comedy, Drama)
    end
  end
end

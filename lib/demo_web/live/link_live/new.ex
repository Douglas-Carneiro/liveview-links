defmodule DemoWeb.LinkLive.New do
  use DemoWeb, :live_view

  alias Demo.Links
  def mount(_params, _session, socket) do
    changeset = Links.Link.changeset(%Links.Link{})
    socket =
      socket
      |> assign(
        :form,
        to_form(changeset)
      )

    {:ok, socket}
  end
end

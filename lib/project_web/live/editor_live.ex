defmodule ProjectWeb.EditorLive do
  use ProjectWeb, :live_view

  def mount(_params, _session, socket) do
    # Assign a default value for control_codes
    {:ok, assign(socket, control_codes: "")}
  end

  def handle_event("update_input", %{"control_codes" => control_codes}, socket) do
    # Update the control_codes assign in the socket whenever input changes
    {:noreply, assign(socket, control_codes: control_codes)}
  end

  def handle_event("update_control_codes", %{"value" => value}, socket) do
    {:noreply, assign(socket, control_codes: value)}
  end
end

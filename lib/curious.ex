defmodule Curious do

  def run(url) do
    url
    |> pull_page()
    |> Floki.parse_document!()
    |> Floki.find("a")
    |> get_all_links([])
    |> show()
  end
  
  def pull_page(url) do
    url
    |> HTTPoison.get()
    |> then(fn {:ok, %{body: body}} -> body end)
  end

  def get_all_links([], acc), do: acc

  def get_all_links([head | rest], acc) do
    [link] = Floki.attribute(head, "href")
    get_all_links(rest, [link | acc])
  end

  def show(links_list) do
    links_list
    |> Enum.with_index()
    |> Enum.each(fn {l, index} -> IO.puts("#{index + 1}. #{l}") end)
  end
end

# Elixir Plug Boilerplate

**This is a basic boilerplate for building rest applications with Elixir/Plug**

## Installation

To install it, you need to clone [this repository](https://github.com/imhassane/elixir-plug-rest-boilerplate) or download it. <br />
1. Make sure you have elixir installed
2. Run the command below <br />
    `git clone --depth=1 https://github.com/imhassane/elixir-plug-rest-boilerplate.git <YOUR_PROJECT_NAME>`

The project has already some dependencies required by default. <br />
The `mix.exs` file dependencies looks like this:

```elixir
def deps do
  [
    {:plug_cowboy, "~> 2.0"},
    {:jason, "~> 1.2"}
  ]
end
```

### Configuration
All the configurations required can be changed in the config directory depending on the environment. <br/>
For the routes and Plug configuration, you can edit the `lib/routes/base.ex` file. This file
is responsible for returning responses in the correct format and status. <br />
By default, you can send response either with standard http codes such as `200` or `404` or you
can use atoms defined in the same file such `:not_found` which will be converted to `404` or
`:ok` which will be converted to `200`.

### Tutorial: Building a movie api with the boilerplate
I've written a story on medium on how to build and test an api with the boilerplate.
[See the full article here](https://medium.com/swlh/building-and-testing-a-simple-rest-api-with-elixir-plug-db063b3d443a)

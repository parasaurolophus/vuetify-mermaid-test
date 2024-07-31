# vuetify-mermaid-test

Demonstrate embedding [mermaid](https://mermaid.js.org/) diagrams in [Vuetify
3](https://vuetifyjs.com/) components.

See [MermaidTest.vue](./src/components/MermaidTest.vue) for details.

## Configuration

```bash
git clone https://github.com/parasaurolophus/vuetify-mermaid-test.git
cd vuetify-mermaid-test
# assumes node and npm are installed
npm install
```

## Testing

```bash
# assumes GNU make is installed and invokes chromium-browser by default
# override the BROWSER variable if you wish to use a different browser
# e.g. make BROWSER=firefox test
make test
```

## Building

```bash
# assumes GNU make is installed
# output will be in the dist subdirectory
make build
```

`Makefile` also supports `clean` and `all` targets where `all` combines `clean`
and `build`. Similarly, the `test` target combines `dev` and `browser` targets
that invoke the built in server and launch the chromium browser, respectively.

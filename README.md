# bundle-size

Compare bundle sizes of `import` vs `require`.

## Usage

The bundles are built automatically with the npm `install` script.
You can see the bundles in the `.build` folder.
To compare the file sizes run:

```bash
ls -lah .build
```

If you would like to test the bundles, start the server with the following command:

```bash
npm start
```

The command will start a server that listens at [http://localhost:8080/]().
Don't forget to open the developer tools to see the results.

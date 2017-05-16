# react + firebase
```
1.create-react-app app
2.yarn run build
3.firebase initでbuildフォルダを指定
4.firebase deployで終了
```

知りたいこと。  
```
・create-react-appした時のフォルダ構成
・index.htmlとreactの読み方
・npm install？->firebase入れたい
```



```
Success! Created hello at /Users/a12653/git/github/pages/React/20170517_create/hello
Inside that directory, you can run several commands:

  yarn start
    Starts the development server.

  yarn run build
    Bundles the app into static files for production.

  yarn test
    Starts the test runner.

  yarn run eject
    Removes this tool and copies build dependencies, configuration files
    and scripts into the app directory. If you do this, you can’t go back!

We suggest that you begin by typing:

  cd hello
  yarn start

Happy hacking!
```

$ yarn start
```
Compiled successfully!

The app is running at:

  http://localhost:3000/

Note that the development build is not optimized.
To create a production build, use `yarn run build`.
```

$ yarn run build
```
yarn run v0.23.4
$ react-scripts build
Creating an optimized production build...
Compiled successfully.

File sizes after gzip:

  46.82 KB  build/static/js/main.2233725d.js
  289 B     build/static/css/main.9a0fe4f1.css

The project was built assuming it is hosted at the server root.
To override this, specify the homepage in your package.json.
For example, add this to build it for GitHub Pages:

  "homepage": "http://myname.github.io/myapp",

The build folder is ready to be deployed.
You may serve it with a static server:

  yarn global add serve
  serve -s build

✨  Done in 7.53s.
```

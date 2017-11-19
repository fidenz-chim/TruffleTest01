# TruffleTest01
Simplest possible Solidity app using Truffle and EhereumJs-testrpc. This has eleminated everything related to Ethereum platform so it uses simple Solidity programing language. I believe this would help software engineers joining Ethereum community from other deciplines to shorten their learning curve.

Setting up the environment 

Setup nmp
https://www.npmjs.com/get-npm

Setup truffle
http://truffleframework.com/docs/getting_started/installation

Setup testrpc
https://github.com/ethereumjs/testrpc

Clone [this](https://github.com/fidenz-chim/TruffleTest01) repository into your local machine

You do not have to run _truffle init_ as the requreid files are already in this repo. But if you are setting up a fresh project, you should run _truffle init_ to initialise the project with truffle.

Again, correct configuraions are in place once you clone the project, but following step should be done if you are trying to test a fresh project. 

Update truffle.js as it looks like below which configuer the truffle to interact with your local instance of testrpc running at port 8545
```
module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 8545,
            network_id: "*" // Match any network id
        }
    }
};
```

Theree important files

1. AddSubTest.sol - Contain _SquareTest_ & _AddSubTest_ contracts

2. TestSquareTest.sol - Test functions for _SquareTest_
3. TestAddSubTest.sol - Test functions for _AddSubTest_

From your project directory, run following commands to see the sample program in action.
```
testrpc
```

```
truffle compile
```
```
truffle migrate
```
```
truffle test
```

If everything works fine, you would get 4 test passes and one failure. Feel free to play with TestSquareTest,  TestAddSubTest & AddSubTest try out different test scenarios. 

Special thank to [What's Solidity](https://www.youtube.com/channel/UCaWes1eWQ9TbzA695gl_PtA) as this is an excercise based on [this](https://www.youtube.com/watch?v=YcTSilIfih0) video. 

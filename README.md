# TruffleTest01
Simplest possible Solidity app using Truffle and EhereumJs-testrpc. This has eleminated everything related to Ethereum platform so it uses simple Solidity programing language. I believe this would help software engineers joining Ethereum community from other deciplines to shorten their learning curve.

How to use

Setup nmp
https://www.npmjs.com/get-npm

Setup truffle
http://truffleframework.com/docs/getting_started/installation

Setup testrpc
https://github.com/ethereumjs/testrpc

Create a new folder for test projet, run _truffle init_ in your terminal (should be in newly created folder)

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
truffle compile
```
```
truffle migrate
```
```
truffle test
```

If everything works fine, you would get 4 test passes and one failure. Feel free to play with TestSquareTest,  TestAddSubTest & AddSubTest try out different test scenarios. 

Special thank to [What's Solidity](https://www.youtube.com/channel/UCaWes1eWQ9TbzA695gl_PtA) as this is an excercise based on following [this](https://www.youtube.com/watch?v=YcTSilIfih0) video. 

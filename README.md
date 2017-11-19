# TruffleTest01
Simplest possible Solidity app using Truffle and EhereumJs-testrpc
How to use

Setup nmp
https://www.npmjs.com/get-npm

Setup truffle
http://truffleframework.com/docs/getting_started/installation

Setup testrpc
https://github.com/ethereumjs/testrpc

Create a new folder for test projet, run _truffle init_ in your terminal (should be in newly created folder)

Update truffle.js as it looks like below
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



# TruffleTest01
Simplest possible Solidity app using Truffle and EhereumJs-testrpc
How to use

Setup nmp
https://www.npmjs.com/get-npm

Setup truffle
http://truffleframework.com/docs/getting_started/installation

Setup testrpc
https://github.com/ethereumjs/testrpc

Create a new folder for test projet, run "truffle init" in your terminal (should be in newly created folder)

Update truffle.js
'''
module.exports = {
    networks: {
        development: {
            host: "localhost",
            port: 8545,
            network_id: "*" // Match any network id
        }
    }
};
'''

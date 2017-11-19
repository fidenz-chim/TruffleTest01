pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AddSubTest.sol";

contract TestSquareTest {
    SquareTest meta1;

    function beforeEach() public {
        meta1 = new SquareTest();
    }

    function testInitialBalanceUsingDeployedContract() public {
        uint expected = 0;
        Assert.equal(meta1.getValue(), expected, "Contract should have 0 initial value");
    }

    function testBalanceAfterSquareUsingDeployedContract() public {
        uint expected = 16;
        meta1.squareValue(4);
        Assert.equal(meta1.getValue(), expected, "Contract should have 16 value");
    }
}

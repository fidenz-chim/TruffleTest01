pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/AddSubTest.sol";

contract TestAddSubTest {
    AddSubTest meta;

    function beforeEach() public {
        meta = new AddSubTest();
    }

    function testInitialValueUsingDeployedContract() public {
        uint expected = 0;
        Assert.equal(meta.getValue(), expected, "Contract should have 0 initial value");
    }

    function testValueAfterAddUsingDeployedContract() public {
        uint expected = 300;
        meta.addValue(300);
        Assert.equal(meta.getValue(), expected, "Contract should have 200 value");
    }

    function testValueAfterAddSubUsingDeployedContract() public {
        uint expected = 150;
        meta.addValue(200);
        meta.subValue(51);
        Assert.equal(meta.getValue(), expected, "Contract should have 150 value");
    }
}

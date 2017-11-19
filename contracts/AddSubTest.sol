pragma solidity ^0.4.17;

contract AddSubTest {

    uint _currentValue;

    function AddSubTest() public {
        _currentValue = 0;
    }

    function addValue(uint val) public{
        _currentValue += val;
    }

    function subValue(uint val) public{
        _currentValue -= val;
    }

    function getValue() public view returns (uint){
      return _currentValue;
    }
}

contract SquareTest {

    uint _currentValue;

    function SquareTest() public {
        _currentValue = 0;
    }

    function squareValue(uint val) public{
        _currentValue = val * val;
    }

    function getValue() public view returns (uint){
      return _currentValue;
    }
}

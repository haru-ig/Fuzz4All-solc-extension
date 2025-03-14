pragma solidity ^0.8.0;
contract Mutater15 {
    address[] addressOne;
    address[] public addressTwo;
    constructor(address _addressOne) {
        addressOne = _addressOne;
    }
    function addOne() public {
        addressTwo = addressOne;
    }
    function getOne() public view returns (address[1] memory memOne) {
        return addressTwo;
    }
}

pragma solidity ^0.8.0;
contract Mutater17 {
    constructor () {
        address test = address(0);
    }
    function testFailure(address _address0) public {
        address failure;
        (failure,,) = address(_address0).call{value:10}("");
    }
}

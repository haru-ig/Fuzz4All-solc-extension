pragma solidity ^0.8.0;
contract CallerExample9 {
    function subtract(uint x, uint y) public view returns(uint z) {



        z = CallerExample6.subtract(y, x);
    }
}

pragma solidity ^0.8.0;
contract CallerExample10 {
    function subtract(uint x, uint y) public pure returns (uint z) {
        z = y.sub(x);
    }
}

pragma solidity ^0.8.0;
contract CallerExample11 {
    function subtract(uint x, uint y) public view returns(uint z) {




        z = callGetAmount();
    }
    function handleAmount(uint amount) public pure returns(uint) {
        return amount + 1;
    }
    function callGetAmount() public pure returns(uint) {

        return HandleAmount().subtract(1, 2);
    }
}

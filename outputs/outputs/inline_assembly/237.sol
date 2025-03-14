pragma solidity ^0.8.0;











pragma solidity 0.8.0;
interface ID {
    function getContractAddress(uint) external view returns (address);
}
contract E12 {

    uint constant one_hundred = 100;
    function divideAndLog(uint _x) {
        ID _id = ID(getContractAddress(_x));
        uint y_ = _id.getContractAddress(one_hundred) / 10;
        if (y_ == one_hundred) {
             _id.setContractAddress(one_hundred, 5);
        } else {
            _id.setContractAddress(y_, 1);
        }
    }
}

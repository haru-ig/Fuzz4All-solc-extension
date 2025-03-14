pragma solidity ^0.8.0;
contract S3 {
    uint16 S;
    function setS(uint16 _s) public {
        S = _s;
    }

    function useS() public view returns(uint) {
        return S;
    }
}

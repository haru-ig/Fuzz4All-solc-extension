pragma solidity ^0.8.0;
contract Array_sem_equiv {
    struct Array {
        uint256 _a;
        uint256 _b;
        uint256 _c;
    }
    function set_a(uint256 _a, uint256 _b, uint256 _c, Array memory a) public view returns(uint256){
        if (a.b <= 7) {
            a._a = a._c;
        }
        return 0;
    }
}

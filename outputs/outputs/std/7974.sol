pragma solidity ^0.8.0;
contract Mutated_Multiprecision {
    address public A;
    address public B;
    address[] memory public my_array;
    address[] public A_1;
    address[] public B_1;
    uint256 public num_1;
    uint256 public num_2;
    uint256[] memory public my_array2;
    Multiprecision_solidiarity m1;
    Mutated_Multiprecision(address _A0, address _B1) {
        num_1 = 0;
        num_2 = 0;
        A = _A0;
        B = _B1;
    }

    function get_A_A() public view returns(address[] memory){
        A_1[0] = A;
        return A_1;
    }

    function get_B_B() public view returns(address[] memory){
        B_1[0] = B;
        return B_1;
    }

    function get_bal(address _a) public view returns(uint256){
        uint256 _bal = 0;
        _bal = IERC20(address(uint160(_a))).balanceOf(address(this));
        return _bal;
    }

    function is_low_bal(uint256 _bal) public view returns(bool){
        if (_bal < 10 ether){
            return true;
        } else {
            return false;
        }
    }

    function has_already_rewarded(address _a) public view returns(bool){
        bool _has = false;
        for (uint256 i = 0; i < my_array2.length; i++) {
            if (my_array2[i] == address(_a)) {
                _has = true;
                break;
            }
        }
        return _has;
    }

    function mutate(uint256 _n12) public returns(bool){
        num_1 += _n12;
        if (num_1 < _n12) {
            return true;
        }
        num_2 += _n

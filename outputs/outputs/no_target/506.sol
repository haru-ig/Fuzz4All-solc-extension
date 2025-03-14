pragma solidity ^0.8.0;

library Mutable  {
    uint256 public constant x_ = 1;
    uint256 public constant y_ = x_;
    uint256 public constant z_ = 1;

    function f_(){
        call();
    }

    function call(){
        switch(uint256(uint160(y_))){
            case 3: {
                i_();break;
            }
            default: {
                z_ = 1;
                f_();
            }
        }
        return x_;
    }

    function i_(){
        return y_;
    }
    function return_(){
        call();
    }
    function static_i() view returns(uint256){
        return return_();
    }
}

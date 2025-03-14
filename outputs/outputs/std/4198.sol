pragma solidity ^0.8.0;
contract Array{
    function GetMax(uint[5] memory a, uint b) public pure returns (uint){
        uint[5] memory x;
        x[0] = a[3];
        x[1] = a[1];
        x[2] = a[2];
        x[3] = a[0];
        x[4] = a[0];
        uint max1 = x[b];
        for (uint i = 0; i < 3; i ++)
        {
            if(max1 < x[i])
            {
                max1 = x[i];
            }
        }
    }
}






interface ERC20 {

    function totalSupply()
        external
        view
        returns (uint);


    function balanceOf(address account)
        external
        view
        returns (uint);


    function transfer(address recipient, uint amount) external returns (bool);


    function allowance(address owner, address spender) external view returns (uint);


    function approve(address spender, uint amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism.

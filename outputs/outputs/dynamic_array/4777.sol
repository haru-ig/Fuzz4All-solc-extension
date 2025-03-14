pragma solidity ^0.8.0;
contract Test2 {
    address[] A;
    uint[] arr;
    bool b;
    uint x;
    uint y;
    uint z;


    mapping (address => uint) x_;
    mapping(address => uint) public m_;

    function MutateData() public {
        A.push(address(this));
        A.push(address(this));
        uint n;
        arr.push(n);
        arr.push(n);
        arr.push(n);
        arr.push(n);


        x[0] = 0;
        b.push(false);
        b.push(false);
        b.push(false);
        b.push(false);



        m_.push(2);
        m_.push(2);
        m_.push(2);
        m_.push(2);
        m_[msg.sender] = 1000;








    }
}

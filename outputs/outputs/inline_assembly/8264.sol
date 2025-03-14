pragma solidity ^0.8.0;
contract InlineAssembly4{

    uint a;
    uint internal b;


    event Do(uint _a);


    constructor(){
        b = a;
    }


    modifier OnlyOwner{
        if(msg.sender == owner()){
            _;
        }else{
            revert();
        }
    }


    receive() external payable OnlyOwner{
        emit Do(msg.value);
    }


    modifier OnlyWhen(uint _condition) {
        if(_condition == 0){
            revert();
        }else{
            _;
        }
    }


    modifier Unless(uint _condition){
        if(_condition == 0){
            _;
        }
    }


    modifier OnlyWhenNever(){
        if(block.timestamp > 1575100910) reverted();
        _;
    }


    modifier NotOwned(){
        if(owner() == msg.sender){
            revert();
        }else{
            _;
        }
    }


    function test() public returns(bool) {
        bool a = false;
        assembly {
            {
                a := 0
            }
            OnlyWhen(0) {
                OnlyWhen(1) {
                    b++
                }
                OnlyWhen(0) OnlyWhen(1) {
                    b--
                }
            }
            OnlyWhen(0) {
				OnlyWhen(0) OnlyWhen(1) {
					b = b + a
				}
            }
            OnlyWhenNever() OnlyWhenNever() {
                a = b
            }
        }





        return a;
    }
}

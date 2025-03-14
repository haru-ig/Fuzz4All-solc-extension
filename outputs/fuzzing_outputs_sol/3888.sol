pragma solidity ^0.8.0;
contract Example1{
    function func_one(bytes memory input, address self_addr) public{

        this.func_two(input, self_addr);
    }
}
contract Example2{
    function func_one(address self_addr) public payable{
        self.func_two("x", self_addr);
        self.call_self();
        self.send_and_receive(bytes(bytes.repeat("x",1)), self_addr);
    }
}
contract Example3{
    receive() external payable {
        self.send_call();
    }

    function send_call () public payable {
        self.send_and_receive();
    }

    function send_and_receive(bytes memory input, address self_addr) public payable {
        self.send_two(input, self_addr);
        self.send_two(address(0), self_addr);
        self.send_two(address(0), address(0));
    }

    function send_two(bytes memory input, address self_addr) public payable {
        self.func_two(input, self_addr);
    }


    function call_self () public {
        self.func_two(address(0), this);
    }

    function self (address self_addr, address self) external payable {
        self_addr.send(1 ether);
    }

    function func_one(bytes memory input, address self_addr) public payable {}

    function get_self_addr() public view returns (address) {
        return address(this);
    }

    function func_two(bytes memory input, address self_addr) public payable {}

}

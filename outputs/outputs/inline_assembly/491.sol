pragma solidity ^0.8.0;

contract SemanticallyEquivalenty {

    mapping(uint => uint) public counts;
    constructor () {
        counts[100] = counts[100] + 1;
        counts[50] = counts[100] + 1;
        counts[10] = counts[50] + 1;
        counts[25] = counts[50] + 1;
        counts[1] = counts[10] + 1;
    }
    function log() public returns (uint) {
        emit Log((msg.sender), "", "");
        return counts[msg.sender];
    }
    event Log(address value1, string value2, string value3);
}

/*

It is crucial to be able to read such a large document which has been written by humans, so that Solidity is able to create meaningful programs out of it. We can safely use Solidity's syntax highlighting for the language itself, but Solidity also features syntax highlighting for the programming language we use to write code.

The text you’ve written can be highlighted without the need to copy and paste it. Use the green and blue boxes to highlight a piece of text like, “print(true)”.

Now, try to read the lines below. It’s important to note that you can change “30” and “128” to whatever you want, because it’ll be a constant in the compiled code. These are the lines we’re trying to read.

<pre style="margin: 0.5rem 0; font-size: 15px;">
<span style="color: #cc0000; font-size: 22px;"><strong>assembly</strong> <span style="color: #3f3f3f;">let</span> count1 :=<span style="color: 40; font-weight: bold;"> 100</span>.<span style="color: 40; font-weight: bold;">memory</span>.<span style="color: 40; font-weight: bold;">load</span>(,  <span style="color: #cc0000;">10</span>) <span style="color: #3f3f3f;">return</span> <span style="color: 40; font-weight: bold;">count1</span><span style="color: #3f3f3f;"> </span></span>
<span style="color: #cc0000; font-size: 22px;"><strong>assembly</strong> <span style="color: #3f3f3f;">let</span> count2 :=<span style="color: 40; font

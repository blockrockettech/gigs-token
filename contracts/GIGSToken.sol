pragma solidity ^0.5.0;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";

contract GIGSToken is ERC20, ERC20Detailed {
    uint256 internal constant FIVE_HUNDRED_MILLION = 500000000;
    uint8 internal constant DECIMALS = 18;

    uint256 public constant FIXED_SUPPLY = FIVE_HUNDRED_MILLION * (10 ** uint256(DECIMALS));

    constructor () public ERC20Detailed("GIGS", "GIGS",  DECIMALS) {
        _mint(msg.sender, FIXED_SUPPLY);
    }

    function transferInternal(address from, address to, uint256 value) public {
        _transfer(from, to, value);
    }

    function approveInternal(address owner, address spender, uint256 value) public {
        _approve(owner, spender, value);
    }
}

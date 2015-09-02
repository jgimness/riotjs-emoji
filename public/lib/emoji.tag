
<emoji-table>

    <div>Filter the emoji list</div>
    <input type="text" placeholder="Search emoji" onkeyup={ filter } />




    <emoji-row each={items} size="1em"></emoji-row>

    <script>
    var emoji = require("./emoji.json");
    var _ = require('lodash');
        this.items = emoji;
        filter(e) {
            var search = e.target.value;
            var regex = new RegExp(search, "gi");
            console.log("filtering on", search);
            var results = _.reduce(emoji, function(memo, emoj) {
                if(regex.test(emoj.emoji + emoj.description + emoj.tags.join(' ') + emoj.aliases.join(' '))) {
                    //memo.push(<emoji-row size="1em" key={emoj.emoji} />);
                    memo.push(emoj);
                }
                return memo;
            }, []);

            console.log("filtering.....", results);
            this.update({ items: results });
        }


    </script>
</emoji-table>

<emoji-row>

    <div>
        <span style="font-size: { size }" onclick={ handleClick }>{ emoji }</span> { description }
    </div>
    this.size = opts.size;
    handleClick(e) {
        console.log("emoji clicked: ", e);
        this.size = this.size === opts.size ? "2em" : opts.size;
    }


</emoji-row>

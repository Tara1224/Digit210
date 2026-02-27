<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" version="3.0">

    <p:output port="result"/>

    <p:identity>
        <p:with-input>
            <root>

                <message type="greeting"> Hello from my XProc pipeline! :) </message>

                <external-file href="xproc-href.xml"/>

            </root>
        </p:with-input>
    </p:identity>

</p:declare-step>

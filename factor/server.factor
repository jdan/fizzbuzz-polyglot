! Copyright (C) 2020 Jordan Scales.
! See http://factorcode.org/license.txt for BSD license.
USING: accessors furnace.actions http.server namespaces
       http.server.dispatchers http.server.responses io.servers kernel ;

IN: webapp-polyglot.server

! http://re-factor.blogspot.com/2010/08/hello-web.html
TUPLE: hello < dispatcher ;

: <hello-action> ( -- action )
  <page-action>
    [ "Hello, world!"
      "text/html"
      <content>
    ] >>display ;

: <hello> ( -- dispatcher )
  hello new-dispatcher
    <hello-action> "" add-responder ;

: run-hello ( -- )
  <hello> main-responder set-global
  80 httpd wait-for-server ;

MAIN: run-hello
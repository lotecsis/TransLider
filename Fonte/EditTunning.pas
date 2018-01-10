unit EditTunning;

interface

 uses StdCtrls, Graphics;

type
    TEdit = class(StdCtrls.TEdit)
    private
        FOldColor: TColor;
    protected
        procedure DoEnter; override;  { Estamos reescrevendo o método DoEnter, para adaptar de acordo com a nossa necessidade}
        procedure DoExit; override;  { Estamos reescrevendo o método DoExit, para adaptar de acordo com a nossa necessidade}
    end;


    TDBEdit = class(StdCtrls.TEdit)
    private
        FOldColor: TColor;
    protected
        procedure DoEnter; override;  { Estamos reescrevendo o método DoEnter, para adaptar de acordo com a nossa necessidade}
        procedure DoExit; override;  { Estamos reescrevendo o método DoExit, para adaptar de acordo com a nossa necessidade}
    end;





//Leia mais em: Mudar Cor: Edit http://www.devmedia.com.br/mudar-cor-edit/17877#ixzz2RE5G2v00

implementation

{ TEdit }

procedure TEdit.DoEnter;

begin
    inherited;

   { Observe a variável/field FOldColor, onde ela guarda a cor anterior  }
    FOldColor := Color;

   { Observe neste ponto dizemos que a cor ao entrar no Edit será clYellow }
    Color := clYellow;
end;

procedure TEdit.DoExit;

begin
    inherited;

   { Observe a cor agora irá receber o conteúdo da variável/field FOldColor }
    Color := FOldColor;
end;


procedure TDBEdit.DoEnter;

begin
    inherited;

   { Observe a variável/field FOldColor, onde ela guarda a cor anterior  }
    FOldColor := Color;

   { Observe neste ponto dizemos que a cor ao entrar no Edit será clYellow }
    Color := clYellow;
end;

procedure TDBEdit.DoExit;

begin
    inherited;

   { Observe a cor agora irá receber o conteúdo da variável/field FOldColor }
    Color := FOldColor;
end;



end.

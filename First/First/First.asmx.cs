using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace First
{
    /// <summary>
    /// Summary description for First
    /// </summary>
    [WebService(Namespace = "http://first-41.apphb.com/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class First : System.Web.Services.WebService
    {
        private ControleJogadores iControleJogadores;

        public First()
        {
            iControleJogadores = new ControleJogadores();
        }

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public Boolean CadastrarJogador(String asNome)
        {
            return iControleJogadores.cadastrarJogador(asNome);
        }

        [WebMethod]
        public Boolean CadastrarCampo(String asNome)
        {
            return iControleJogadores.cadastrarCampo(asNome);
        }

        [WebMethod]
        public Boolean CadastrarPosicao(String asNome, int aiTipoCampo)
        {
            return iControleJogadores.cadastrarPosicao(asNome, aiTipoCampo);
        }

        [WebMethod]
        public Boolean VincularJogadorPosicao(int aijogador, int aiPosicao)
        {
            return iControleJogadores.vincularJogadorPosicao(aijogador, aiPosicao);
        }

        [WebMethod]
        public Boolean CadastrarTime(string asNome, int aiTipoCampo, int aiJogador)
        {
            return iControleJogadores.criarTime(asNome, aiTipoCampo, aiJogador);
        }

        [WebMethod]
        public Boolean VincularJogadorTime(int aiJogador, int aiTime)
        {
            return iControleJogadores.vincularJogadorTime(aiJogador, aiTime);
        }
        /*[WebMethod]
        public List<Jogador> BuscarJogadores()
        {
            return iControleJogadores.getJogadores();
        }*/

        /*[WebMethod]
        public List<Campo> BuscarCampos()
        {
            return iControleJogadores.getCampos();
        }*/
    }
}

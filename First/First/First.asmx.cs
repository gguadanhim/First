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
        public List<Jogador> BuscarJogadores()
        {
            return iControleJogadores.getJogadores();
        }
    }
}

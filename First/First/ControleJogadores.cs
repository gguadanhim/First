using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace First
{
    public class ControleJogadores
    {
        public ControleJogadores()
        {

        }

        public Boolean cadastrarJogador(String asNome)
        {
            Boolean lbRetorno = false;
            try
            {
                using (var banco = new Modelo_dadosContainer())
                {
                    Jogador lJogador = new Jogador();
                    lJogador.Nome = asNome;
                    banco.JogadorSet.Add(lJogador);
                    banco.SaveChanges();
                    lbRetorno = true;
                }
            }
            catch (Exception ex)
            {
                System.Console.WriteLine(ex.Message);
            }
            return lbRetorno;
        }

        public List<Jogador> getJogadores()
        {
            List<Jogador> lListaJogadores = new List<Jogador>();

            using (var banco = new Modelo_dadosContainer())
            {

                var listaJogadores = from p in banco.JogadorSet
                                     select p;

                foreach (Jogador item in listaJogadores)
                {
                    lListaJogadores.Add(item);
                }
            }

            return lListaJogadores;
        }
    }
}
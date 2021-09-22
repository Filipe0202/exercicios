from operacoes_basicas import calculadora_de_subtracao

# Funções são blocos de códigos que podem ser chamados a qualquer momento e quantas vezes quisermos para executar
# as ações que definimos dentro do bloco.

def calculadora_de_soma():          # Para definir de uma função, usamos a palavra reservada da linguagem python chamada
    valor_1 = 2                     # def (definition), que é seguida pelo nome da função e alguns parâmetros dentro dos
    valor_2 = 2                     # parênteses. A lista de parâmetros pode ser vazia ou conter parâmetros separados
    soma = valor_1 + valor_2        # pos vírgulas. Em qualquer caso, os parênteses são obrigatórios.
    print(soma)


def calculadora_de_subtracao():                          # Conseguimos fazer as mesmas coisas que faziamos anteriormente
    valor_1 = int(input('Informe um valor: '))           # utilizando funções e com a vantagem de economizar códigos
    valor_2 = int(input('Informe outro valor: '))        # que antes seriam repetidos, pois cada vez que necessitarmos
    resultado = valor_1 - valor_2                        # dessa funcionalidade, é só chamarmos.
    print(f'O resultado da subtração é de: {resultado}')


def calculadora_de_multiplicacao(valor_1, valor_2):  # Podemos também receber parametros (neste caso valor_1 e valor_2)
    resultado = valor_1 * valor_2                    # estes valores devem ser passados na chamada da função.
    return resultado                                 # Podemos também retornar valores ao término de uma função,
                                                     # Estes valores serão retornados na linha onde essa função
                                                     # foi chamada.

def calculadora_de_divisao(valor_1, valor_2):
    return valor_1 / valor_2


def calculadora(valor_1, valor_2, operacao):        # Este é mais um exemplo do que podemos fazer com funções.
    if operacao == '+':                             # As funções podem nos ajudar para além de reduzir a repetição de
        resultado = valor_1 + valor_2               # códigos, ela também pode nos ajudar a organizar melhor nosso
    elif operacao == '-':                           # código. Neste caso temos uma função que executa operações de
        resultado = valor_1 - valor_2               # calculadora, ela simplesmente precisa que passemos a ela dois
    elif operacao == '*':                           # valores e a operação que queremos executar e ela retornará para
        resultado = valor_1 * valor_2               # nós o resultado dessa operação.
    else:
        resultado = valor_1 / valor_2
    return resultado, operacao


def recebe_valores():                                               # Neste exemplo de uso de função, temos a função
    numero_1 = int(input('Informe o primeiro valor: '))             # recebe_valores(), quando chamamos ela, ela coleta
    numero_2 = int(input('Informe o segundo valor: '))              # dados do usuário e retorna para gente estes dados.
    operacao = input('Informe a operacao [+], [-], [*], [/]: ')
    return numero_1, numero_2, operacao


if __name__ == '__main__':
    calculadora_de_soma()       # Chama a função calculadora_de_soma() que definimos anteriormente na linha 4

    calculadora_de_subtracao()  # Chama a função calculadora_de_subtracao() que definimos anteriormente na linha 11
    
    numero_1 = int(input('Informe um valor: '))
    numero_2 = int(input('Informe outro valor: '))
    valor_final = calculadora_de_multiplicacao(numero_1, numero_2)  # Chama a função calculadora_de_multiplicacao()
    print(valor_final)                                              # que definimos anteriormente na linha 18
    
    print(calculadora_de_divisao(valor_2=numero_2, valor_1=numero_1))  # Chama a função calculadora_de_divisao()
                                                                       # que definimos na linha 24
    valor_1, valor_2, operacao = recebe_valores()   # Chama a função recebe_valores() que definimos na linha 40
    
    resultado, operacao = calculadora(valor_1=valor_1, valor_2=valor_2, operacao=operacao)
                            # Chama a função calculadora() que definimos na linha 28.
    
    print(f'O resultado da operacao {operacao} é de {resultado}')